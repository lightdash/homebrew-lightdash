class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2936.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2936.3/lightdash-cli-0.2936.3-macos-arm64.tar.gz"
      sha256 "7d9d164c5785238a9c2e736ad82e1f0b16fa71ad309f82ef4246fc4a13dcf9df"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2936.3/lightdash-cli-0.2936.3-macos-x64.tar.gz"
      sha256 "b3f965529879118e5259bb4d5c0e3428a23a924ac4a9fae7a504c9257632c72c"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
