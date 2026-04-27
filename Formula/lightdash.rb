class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2814.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2814.1/lightdash-cli-0.2814.1-macos-arm64.tar.gz"
      sha256 "0498fd1b5206ed991b41acacecb6cc95b52d67b8f5fa1e0b866f35aa0b53e735"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2814.1/lightdash-cli-0.2814.1-macos-x64.tar.gz"
      sha256 "681329b843577e9fecbe324d7b4e52970d04447e061d926a4ed5547f75157a00"
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
