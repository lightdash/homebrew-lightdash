class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2772.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2772.5/lightdash-cli-0.2772.5-macos-arm64.tar.gz"
      sha256 "17c4257749f3c1665c9b6e67494a6a321db749213f3701f895937968d3db3143"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2772.5/lightdash-cli-0.2772.5-macos-x64.tar.gz"
      sha256 "5099b5f4d7a3c5dcca4670eba462ec3b5c5f47c5e8bf8f4992c075e2f9db98cd"
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
