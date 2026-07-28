class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.5.0/lightdash-cli-1.5.0-macos-arm64.tar.gz"
      sha256 "ac4db24f52bafbaba0eb7fccb50974690a0218686d4264d40b53fda7627af3ea"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.5.0/lightdash-cli-1.5.0-macos-x64.tar.gz"
      sha256 "95f84e8b094514185435a32f54eab9b112e37a9cc7e8a49121741fadb2a477fc"
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
