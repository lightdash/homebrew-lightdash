class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3031.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3031.0/lightdash-cli-0.3031.0-macos-arm64.tar.gz"
      sha256 "48c0c82901d116ae45c788d9025c3a378df486e3dcd3db4492d21f05f1f6311e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3031.0/lightdash-cli-0.3031.0-macos-x64.tar.gz"
      sha256 "7d6b649b48a320d01a3f123d7b58b3308d4c447ea8c0e787f9d9d58072429f49"
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
