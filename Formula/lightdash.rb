class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.196.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.196.1/lightdash-cli-2.196.1-macos-arm64.tar.gz"
      sha256 "d6dc00220cca4565d83e13da6471897b75dcfc8b2fb09c687cca9e88bd73ef57"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.196.1/lightdash-cli-2.196.1-macos-x64.tar.gz"
      sha256 "ec2f3fee0f2808f93af324a118786982211eb462283a29e6be2b9045062fbdd4"
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
