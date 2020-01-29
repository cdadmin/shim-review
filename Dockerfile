FROM ubuntu:19.04

WORKDIR /
RUN apt update -y
RUN apt-get install -y build-essential gnu-efi git bsdmainutils
RUN git clone https://github.com/cdadmin/shim-review
RUN git clone https://github.com/rhboot/shim.git
WORKDIR /shim
RUN git checkout a4a1fbe728c9545fc5647129df0cf1593b953bec
RUN rm -rf /usr/lib64/gnuefi/
RUN ln -s /usr/lib /usr/lib64/gnuefi
RUN make VENDOR_CERT_FILE=/shim-review/magaericsolutions-ca.cer ENABLE_HTTPBOOT=true
WORKDIR /
RUN hexdump -Cv /shim-review/shimx64.efi > orig
RUN hexdump -Cv /shim/shimx64.efi > build
RUN diff -u orig build
RUN sha256sum shim-review/shimx64.efi
RUN sha256sum shim/shimx64.efi
