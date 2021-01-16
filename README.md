# Name of Project
Project Detail

## กำหนดค่าสิ่งแวดล้อม
สร้าง Directory สำหรับบันทึก Projectนี้ และ ใช้คำสั่งต่อไปนี้เพื่อสร้างและย้ายเข้าไปยัง Name Directory
```
mkdir Name
cd Name
```

ดาวน์โหลดโครงสร้างของโปรเจ็ค pet-shop ซึ่งมีอยู่ใน Truffle Framework โดยใช้คำสั่งต่อไปนี้
```
truffle unbox pet-shop
```


### 1. Create Smart Contract
ใช้ Visual Studio Code เพื่อสร้างไฟล์ชื่อ Name.sol ในไดเร็กทอรี contracts โดยมีโค้ดดังนี้
```
code
```

### 2. Compile และ Migrate
ทำการ Compile Smart Contracts โดยใช้คำสั่ง
```
truffle compile
```


ใช้ Visual Studio Code ในการสร้างไฟล์ 2_deploy_contracts.js ในไดเร็กทอรี migrations ดังนี้
```
code
```
เปิดโปรแกรม Ganache โดยการใช้เมาส์ดับเบิลคลิกที่ชื่อไฟล์ จากนั้น Click ที่ Workspace ที่ต้องการใช้งาน
จากนั้นทำการ Migrate โดยใช้คำสั่ง 
```
truffle migrate
```

#### 3.1 แก้ไข image
ให้นำไฟล์ภาพที่ต้องการแสดงผลไปไว้ใน Directory image

#### 3.2 แก้ไข pets.json
ทำการ เปลี่ยนชื่อจาก pets.json ให้เป็น cars.json และ แก้ไขโค๊ดให้เป็นดังต่อไปนี้
```
[
  code
```
#### 3.3 แก้ไข app.js
ทำการแก้ไขตัวแปรต่างๆ สำหรับ Back-end

```
code
```

### 3. แก้ไข Front-end 
ทำการแก้ไขในส่วนของ UI ให้มีการแสดงผลตามต้องการ

```
code
```

### 4.ทำการสั่ง Run

```
npm run dev
```
Firefox จะถูกเรียกที่ http://localhost:3000 เพื่อแสดงผลลัพธ์
