repo init -u git://codeaurora.org/platform/manifest.git -b release -m default_LA.BR.1.2.6-01710-8x16.0.xml
cd .repo
git clone https://github.com/AurumOS/AuManifest.git -b auos local_manifests
cd local_manifests
rm -rf README.mkdn
