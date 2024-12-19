### **Cara Menjalankan Kubernetes dengan Minikube**

Ikuti langkah-langkah berikut untuk mengatur dan menjalankan cluster Kubernetes menggunakan Minikube di mesin lokal Anda.

#### 1. **Instalasi Minikube CLI**
Pastikan Anda sudah menginstal Minikube CLI terlebih dahulu.

- Jalankan perintah berikut untuk menjalankan skrip instalasi Minikube:

  ```bash
  sh requirements.sh
  ```

- Setelah instalasi selesai, jalankan skrip berikut untuk mengaktifkan Minikube CLI:

  ```bash
  source set.sh
  ```

#### 2. **Membuat Cluster Kubernetes**
Setelah Minikube terinstal, Anda perlu membuat cluster node.

- Arahkan ke direktori tempat skrip `create.sh` berada.
- Jalankan skrip untuk membuat cluster node:

  ```bash
  sh create.sh
  ```
- Testing dengan cara:
  ```
  kubectl get nodes
  ```
  Pastikan kedua nodes sudah dalam kondisi ready.

- Anda dapat mengedit skrip `create.sh` sesuai kebutuhan untuk menyesuaikan konfigurasi cluster (misalnya, jumlah node, alokasi sumber daya, dll.).

#### 3. **Mendeploy Aplikasi**
Setelah cluster dibuat, Anda dapat mendeploy aplikasi ke dalam cluster Minikube.

- Jalankan perintah berikut untuk memulai proses deployment:

  ```bash
  sh up.sh
  ```
- Testing dengan cara:
  ```
  kubectl get pods
  ```
  Pastikan kedua pods sudah dalam kondisi ready.
- Skrip `up.sh` akan membuat sumber daya yang diperlukan dalam cluster Kubernetes Anda dan mendeploy aplikasi.

#### 4. **Tunneling untuk Akses Lokal dan Load Balancing**
Untuk mengakses layanan yang berjalan di cluster secara lokal dan melakukan load balancing antar node, Anda perlu memulai tunneling:

- Jalankan perintah berikut untuk memulai Minikube tunnel:

  ```bash
  minikube tunnel
  ```

  Perintah ini akan membuka rute jaringan yang memungkinkan Anda mengakses layanan Kubernetes dari mesin lokal Anda. Ini juga memungkinkan load balancing antar node.

#### 5. **Menghapus Aplikasi dari Node**
Jika Anda ingin menghapus aplikasi dari cluster, jalankan perintah berikut:

- Untuk menurunkan deployment dan menghapus aplikasi:

  ```bash
  sh down.sh
  ```
