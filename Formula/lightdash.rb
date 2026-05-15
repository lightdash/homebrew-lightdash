class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2956.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2956.1/lightdash-cli-0.2956.1-macos-arm64.tar.gz"
      sha256 "b9aeb63bc9590758859a064de807596bed7d8e5e34bd5ab22e3c33fb6efabeb7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2956.1/lightdash-cli-0.2956.1-macos-x64.tar.gz"
      sha256 "4c599f36eab29910ba25956d46f87e9b6f70ae167ca320c1d57074769be9fc6a"
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
