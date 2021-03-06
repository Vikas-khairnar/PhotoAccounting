<?php

	$userEmail = $_GET['email'];
	$folderName = $_GET["devicetoken"];
	
	//////////////////////////////////////////////////////////////////////////////
	// PostgreSql Code
	//////////////////////////////////////////////////////////////////////////////
	$result = $db->CUST_GetByEmail($userEmail);
	$result = (is_bool($result)) ? null : pg_fetch_assoc($result);
	$customer_id = 0;
	
	if(is_null($result)){
		unset($result);
		
		$result = $db->CUST_Create($email);
		
		if(is_bool($result) && $result){
			unset($result);
			$result = $db->CUST_GetByEmail($email);
			$result = (!is_bool($result)) ? pg_fetch_assoc($result) : null;
	
			if(!is_null($result))
				$customer_id = $result["customer_id"];
			else{
				echo "<response><code>200</code></response>";
				exit();
			}
		}
			
	}else{
		$customer_id = $result["customer_id"];
	}
	
	$result = $db->CDV_GetCustomerID($folderName);
	$result = (is_bool($result)) ? null : pg_fetch_assoc($result);
	
	if(!is_null($result)){
		if($result["customer_id"] != $customer_id){
			unset($result);
			
			$result = $db->CDV_Create($customer_id, $folderName);
			
			if(!$result){
    				echo "<response><code>200</code></response>";
    				exit();
			}
		}
	}else{
			$result = $db->CDV_Create($customer_id, $folderName);
			
			if(!$result){
    				echo "<response><code>200</code></response>";
    				exit();
			}
	}
	///////////////////////////////////////////////////////////////////////////////
	
	///////////////////////////////////////////////////////////////////
	// S3 Code
	///////////////////////////////////////////////////////////////////
	// Instantiate the AmazonS3 class
	$s3 = new AmazonS3(array("key"=>"AKIAINETGK3VTKANM25Q", "secret"=>"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"));
	$bucket = "all-user-files";
	///////////////////////////////////////////////////////////////////
	
	if(!is_dir($folderName)) {
		mkdir($folderName);
	}
	
	$fileName = $folderName."/useremail.txt";
	$fp = fopen($fileName, 'w');
	fwrite($fp,$userEmail);
	fflush($fp);
	fclose($fp);
	unset($fp);
	
	///////////////////////////////////////////////////////////////////
	// S3 Code
	///////////////////////////////////////////////////////////////////
	$file = $fileName;
	$bucket = "all-user-files";
	$response = $s3->create_object($bucket, $file, array(
			'fileUpload' => $file
	));
	///////////////////////////////////////////////////////////////////
	
	if($response->isOk())
		echo "<response><code>100</code></response>";
    else 
    	echo "<response><code>200</code></response>";
//    } else {
//    	echo "<response><code>200</code></response>";
//    }
    
?>
