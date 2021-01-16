# DinoSnatch
Project Detail

![image](https://user-images.githubusercontent.com/77496545/104810380-b397be80-5826-11eb-9fe0-b37ab185e82c.png)

# แนวคิดในการพัฒนาโครงการ (Conceptual Design)

การพัฒนาโครงการ web-based dApp ได้แนวความคิดในการพัฒนาจากหัวข้อ ‘Pet Shop’ ซึ่งเป็นส่วนหนึ่งของการศึกษาในห้องเรียน โดยได้นำมาพัฒนาให้มีความสนุกสนานขึ้นด้วยการปรับเปลี่ยน coding และฐานข้อมูลบางส่วนออกมาเป็น web-base dApp ชื่อ DinoSnatch หรือ ‘ฉกไข่ไดโนเสาร์ 
“DinoSnatch” เป็นการฝึกความรู้พื้นฐานในการใช้ Ethereum, Smart Contracts, HTML และ JavaScript เพื่อพัฒนาเป็น dApp โดยสร้างให้มีไข่ไดโนเสาร์จำนวน 16 ชนิด ซึ่งข้อมูลจะถูกเก็บไว้ใน database และแสดงให้เห็นการเปลี่ยนแปลงของ Ethereum เมื่อไข่ไดโนเสาร์ถูกฉกออกไป  

	โครงร่างของโครงการจะประกอบด้วย 5 ส่วนหลักๆคือ
	
	1. การสร้าง smart contract ด้วยโปรแกรม solidity
	
	2. การออกแบบ UI(User Interface) อย่างง่าย 
	
	3. การสร้างฐานข้อมูล ‘ไข่ไดโนเสาร์’
	
	4. การพัฒนาโปรแกรม Back-End โดยใช้ web3 ผ่าน NodeJS
	
	5. การทดสอบ (Testing) และการแก้ไขปัญหา


# วัตถุประสงค์ของโครงการ (Objective)

โครงการพัฒนา web-base dApp  ‘ฉกไข่ไดโนเสาร์’ มีวัตถุประสงค์ดังนี้

	 1.2.1 เพื่อฝึกการเขียน application ที่มี system architecture แบบ Three Tier Diagram

	1.2.2 เพื่อฝึกกระบวนในการคิด วิเคราะห์ การออกแบบ และการเลือกใช้เครื่องมือในการ	ทำงานที่เหมาะสมกับโครงการ เช่น การใช้ Use Case Diagram รวมไปถึงการออกแบบ UI (User Interface Design) ให้มีความเรียบง่าย ลดความซับซ้อน 	สะดวกในการใช้งาน

	1.2.3 เพื่อให้เข้าใจพื้นฐานในการใช้ Ethereum, Smart Contracts, HTML และ JavaScript ในการนำมาร่วมกันพัฒนาเป็น dApp
	
	1.2.4 เพื่อพัฒนาการเขียน coding ให้เกิดเป็นโครงการที่สามารถใช้งานได้จริง เพิ่มเติมจากที่เรียนในห้องเรียน
	
	1.2.5 เพื่อสร้างความน่าสนใจสนุกสนานแก่ผู้ที่สนใจเข้ามาศึกษาโครงการ โดยการนำไดโนเสาร์ ซึ่งเป็นตัวการ์ตูนที่ได้รับความนิยมในทุกๆวัยมาเป็นเครื่องมือในการสร้างความน่าสนใจ
	
	
# การวิเคราะห์ และการออกแบบ (Analysis and Design)

โครงการพัฒนา web-base dApp  ‘ฉกไข่ไดโนเสาร์’  ออกแบบโดยใช้ Use Case Diagram มาวางเป็นพื้นฐานในการออกแบบ โดยใช้รูปแบบ System Architecture แบบ Three Tier Diagram ดังแสดงในภาพที่ 1.1 และ 1.2 ดังนี้


![image](https://user-images.githubusercontent.com/77496545/104810392-c3af9e00-5826-11eb-92db-7e76e378c392.png)



![image](https://user-images.githubusercontent.com/77496545/104810399-cd390600-5826-11eb-93fd-1bf3b06f66ab.png)



	Three Tier Diagram ประกอบด้วยส่วนประกอบหลัก 3 ส่วนคือ
	
	1.3.1 Data Layer (Database)
	
	1.3.2 Application Layer (Back-end)
	
	1.3.3 Presentation Layer (Front-end)

	Application ที่นำมาใช้ในการสร้าง “DinoSnatch” ประกอบด้วย
	-Ganache เพื่อสร้าง Ethereum Network
	-Metamask Wallet เพื่อสร้าง browser เป็นแบบ blockchain browser
	-โปรแกรมพื้นฐานในการ interface ได้แก่ HTML, CSS และ JS
	-Smart Contracts และการทดสอบด้วย Solidity  
	-node & npm
	-Truffle 

# ขั้นตอนการทำงาน


# กำหนดค่าสิ่งแวดล้อม
สร้าง Directory สำหรับบันทึก Projectนี้ และ ใช้คำสั่งต่อไปนี้เพื่อสร้างและย้ายเข้าไปยัง Name Directory
```
mkdir dino
cd dino
```

ดาวน์โหลดโครงสร้างของโปรเจ็ค pet-shop ซึ่งมีอยู่ใน Truffle Framework โดยใช้คำสั่งต่อไปนี้
```
truffle unbox dino
```


### 1. Create Smart Contract
ใช้ Visual Studio Code เพื่อสร้างไฟล์ชื่อ DinoSnatch.sol ในไดเร็กทอรี contracts โดยมีโค้ดดังนี้
```
pragma solidity ^0.5.0;

contract DinoSnatch {
    address[16] public dinos;

    function adopt(uint dinoId) public returns (uint) {
        require(dinoId >= 0 && dinoId <=15);
        dinos[dinoId] = msg.sender;
        return dinoId;
    }

    function getdinos() public view returns (address[16] memory) {
        return dinos;
    }
}
```

### 2. Compile และ Migrate
ทำการ Compile Smart Contracts โดยใช้คำสั่ง
```
truffle compile
```

ใช้ Visual Studio Code ในการสร้างไฟล์ 2_deploy_contracts.js ในไดเร็กทอรี migrations ดังนี้
```
var abc = artifacts.require("DinoSnatch");

module.exports = function(deployer) {
    deployer.deploy(abc);
};
```
เปิดโปรแกรม Ganache โดยการใช้เมาส์ดับเบิลคลิกที่ชื่อไฟล์ จากนั้น Click ที่ Workspace ที่ต้องการใช้งาน
จากนั้นทำการ Migrate โดยใช้คำสั่ง 
```
truffle migrate
```

#### 3.1 แก้ไข image
ให้นำไฟล์ภาพที่ต้องการแสดงผลไปไว้ใน Directory images

![image](https://user-images.githubusercontent.com/77496545/104810380-b397be80-5826-11eb-9fe0-b37ab185e82c.png)

#### 3.2 แก้ไข pets.json
ทำการ เปลี่ยนชื่อจาก pets.json ให้เป็น dinos.json และ แก้ไขโค๊ดให้เป็นดังต่อไปนี้
```
[
  {
    "id": 0,
    "name": "Somchai",
    "picture": "images/ASomchai.jpg",
    "age": 3,
    "species": "Dino A",
    "hometown": "Khonkaen"
  },
  {
    "id": 1,
    "name": "Boonchoo",
    "picture": "images/BBoonchoo.jpg",
    "age": 3,
    "species": "Dino B",
    "hometown": "Burirum"
  },
  {
    "id": 2,
    "name": "Boonsong",
    "picture": "images/CBoonsong.jpg",
    "age": 2,
    "species": "Dino C",
    "hometown": "Korat"
  },
  {
    "id": 3,
    "name": "Nadej",
    "picture": "images/DNadej.jpg",
    "age": 2,
    "species": "Dino D",
    "hometown": "Yasothon"
  },
  {
    "id": 4,
    "name": "Ether",
    "picture": "images/EEther.jpg",
    "age": 2,
    "species": "Dino E",
    "hometown": "Loei"
  },
  {
    "id": 5,
    "name": "Somsri",
    "picture": "images/FSomsri.jpg",
    "age": 3,
    "species": "Dino F",
    "hometown": "RoiEt"
  },
  {
    "id": 6,
    "name": "Gucci",
    "picture": "images/GGucci.jpg",
    "age": 3,
    "species": "Dino G",
    "hometown": "Ubonratchathani"
  },
  {
    "id": 7,
    "name": "Yaya",
    "picture": "images/HYaya.jpg",
    "age": 3,
    "species": "Dino H",
    "hometown": "Udonthani"
  },
  {
    "id": 8,
    "name": "Patcharabha",
    "picture": "images/IPatcharabha.jpg",
    "age": 2,
    "species": "Dino I",
    "hometown": "Chiangmai"
  },
  {
    "id": 9,
    "name": "Jamesji",
    "picture": "images/JJamesji.jpg",
    "age": 3,
    "species": "Dino J",
    "hometown": "Lumpang"
  },
  {
    "id": 10,
    "name": "Kitty",
    "picture": "images/KKitty.jpg",
    "age": 2,
    "species": "Dino K",
    "hometown": "Chiangrai"
  },
  {
    "id": 11,
    "name": "Lala",
    "picture": "images/LLala.jpg",
    "age": 3,
    "species": "Dino L",
    "hometown": "Payao"
  },
  {
    "id": 12,
    "name": "Marasri",
    "picture": "images/MMarasri.jpg",
    "age": 3,
    "species": "Dino M",
    "hometown": "Pisanulok"
  },
  {
    "id": 13,
    "name": "Nina",
    "picture": "images/NNina.jpg",
    "age": 4,
    "species": "Dino N",
    "hometown": "Sukothai"
  },
  {
    "id": 14,
    "name": "Opal",
    "picture": "images/OOpal.jpg",
    "age": 2,
    "species": "Dino O",
    "hometown": "Prae"
  },
  {
    "id": 15,
    "name": "Papa",
    "picture": "images/PPapa.jpg",
    "age": 2,
    "species": "Dino P",
    "hometown": "Tak"
  }
] 
```
#### 3.3 แก้ไข app.js
ทำการแก้ไขตัวแปรต่างๆ สำหรับ Back-end

```
App = {
  web3Provider: null,
  contracts: {},

  init: async function() {
    // Load dinos.
    $.getJSON('../dinos.json', function(data) {
      var dinosRow = $('#dinosRow');
      var dinoTemplate = $('#dinoTemplate');

      for (i = 0; i < data.length; i ++) {
        dinoTemplate.find('.panel-title').text(data[i].name);
        dinoTemplate.find('img').attr('src', data[i].picture);
        dinoTemplate.find('.dino-species').text(data[i].species);
        dinoTemplate.find('.dino-age').text(data[i].age);
        dinoTemplate.find('.dino-hometown').text(data[i].hometown);
        dinoTemplate.find('.btn-adopt').attr('data-id', data[i].id);

        dinosRow.append(dinoTemplate.html());
      }
    });

    return await App.initWeb3();
  },

  
  initWeb3: async function() {
    // Modern dapp browsers...
    if (window.ethereum) {
      App.web3Provider = window.ethereum;
      try {
        // Request account access
        await window.ethereum.enable();
      } catch (error) {
        // User denied account access...
        console.error("User denied account access")
      }
    }
    // Legacy dapp browsers...
    else if (window.web3) {
      App.web3Provider = window.web3.currentProvider;
    }
    // If no injected web3 instance is detected, fall back to Ganache
    else {
      App.web3Provider = new Web3.providers.HttpProvider('http://localhost:7545');
    }
    web3 = new Web3(App.web3Provider);

    return App.initContract();
  },

  initContract: function() {
    $.getJSON('DinoSnatch.json', function (data) {
      // Get the necessary contract artifact file and instantiate it with @truffle/contract
      var DinoSnatchArtifact = data;
      App.contracts.DinoSnatch = TruffleContract(DinoSnatchArtifact);

      // Set the provider for our contract
      App.contracts.DinoSnatch.setProvider(App.web3Provider);

      // Use our contract to retrieve and mark the adopted dinos
      return App.markAdopted();
    });
    return App.bindEvents();
  },

  bindEvents: function() {
    $(document).on('click', '.btn-adopt', App.handleAdopt);
  },

  markAdopted: function() {
    var DinoSnatchInstance;

    App.contracts.DinoSnatch.deployed().then(function (instance) {
      DinoSnatchInstance = instance;

      return DinoSnatchInstance.getdinos.call();
    }).then(function (dinos) {
      for (i = 0; i < dinos.length; i++) {
        if (dinos[i] !== '0x0000000000000000000000000000000000000000') {
          $('.panel-dino').eq(i).find('button').text('Success').attr('disabled', true);
        }
      }
    }).catch(function (err) {
      console.log(err.message);
    });
  },

  handleAdopt: function(event) {
    event.preventDefault();

    var dinoId = parseInt($(event.target).data('id'));

    var DinoSnatchInstance;

    web3.eth.getAccounts(function (error, accounts) {
      if (error) {
        console.log(error);
      }

      var account = accounts[0];

      App.contracts.DinoSnatch.deployed().then(function (instance) {
        DinoSnatchInstance = instance;

        // Execute adopt as a transaction by sending account
        return DinoSnatchInstance.adopt(dinoId, { from: account });
      }).then(function (result) {
        return App.markAdopted();
      }).catch(function (err) {
        console.log(err.message);
      });
    });
  }

};

$(function() {
  $(window).load(function() {
    App.init();
  });
});
```

### 3. แก้ไข Front-end 
ทำการแก้ไขในส่วนของ UI ให้มีการแสดงผลตามต้องการ

![image](https://user-images.githubusercontent.com/77496545/104810404-dd50e580-5826-11eb-881f-6d723a66c3f1.png)
```
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Dino Snatch</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  
  <body>
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-8 col-sm-push-2">
          <h1 class="text-center">Dino Snatch</h1>
          <hr/>
          <br/>
        </div>
      </div>

      <div id="dinosRow" class="row">
        <!-- dinoS LOAD HERE -->
      </div>
    </div>

    <div id="dinoTemplate" style="display: none;">
      <div class="col-sm-3 col-md-2 col-lg-6">
        <div class="panel panel-default panel-dino">
          <div class="panel-heading">
            <h3 class="panel-title">Scrappy</h3>
          </div>
          <div class="panel-body">
            <img alt="140x140" data-src="holder.js/140x140" class="img-rounded img-center" style="width: 100%;" src="https://animalso.com/wp-content/uploads/2017/01/Golden-Retriever_6.jpg" data-holder-rendered="true">
            <br/><br/>
            <strong>species</strong>: <span class="dino-species">Dino A</span><br/>
            <strong>Age</strong>: <span class="dino-age">3</span><br/>
            <strong>hometown</strong>: <span class="dino-hometown">Warren, MI</span><br/><br/>
            <button class="btn btn-default btn-adopt" type="button" data-id="0">Snatch</button>
          </div>
        </div>
      </div>
    </div>
    <style>
      body {
        background-image: url('images/3161861.jpg');
        background-repeat: no-repeat;
        background-attachment: fixed; 
        background-size: 100% 100%;
      }
      </style>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/web3.min.js"></script>
    <script src="js/truffle-contract.js"></script>
    <script src="js/app.js"></script>
  </body>
</html>
```

### 4.ทำการสั่ง Run

```
npm run dev
```
Firefox จะถูกเรียกที่ http://localhost:3000 เพื่อแสดงผลลัพธ์

# Result

ผลลัพท์ที่ได้เมื่อ run โปรแกรมเรียบร้อยแล้ว

![image](https://user-images.githubusercontent.com/77496545/104810418-fd80a480-5826-11eb-9c2d-55f361bbf8ef.png)


