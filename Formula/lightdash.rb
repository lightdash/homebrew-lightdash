class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.262.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.262.1/lightdash-cli-1.262.1-macos-arm64.tar.gz"
      sha256 "91c2d6c19648ad74ea47f017a78c1d9fd364c668b266468eefb5dc63ac0ce2eb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.262.1/lightdash-cli-1.262.1-macos-x64.tar.gz"
      sha256 "3eb2b91d14d6ee49d176d01284836b302fc704825ea8481d0b3473394c7f76b3"
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
