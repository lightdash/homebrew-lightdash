class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.1.0/lightdash-cli-2.1.0-macos-arm64.tar.gz"
      sha256 "02dc8a781707952eb26cda698b8f3eed3fe25ac1abeefc7274d264580b159f49"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.1.0/lightdash-cli-2.1.0-macos-x64.tar.gz"
      sha256 "b4402300123db4eb47b612698bfcac5c29d7c8d373ac1c69909f405058c10619"
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
