class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2259.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2259.2/lightdash-cli-0.2259.2-macos-arm64.tar.gz"
      sha256 "b62af8ef077a6e4c2c7c009eed23af15fae81d3e00ed52d7abc45d8925c0cda0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2259.2/lightdash-cli-0.2259.2-macos-x64.tar.gz"
      sha256 "e723908942d6b7be4daa67464cb99d72c3ffdf3a75a0979eaa1b48a2be0e736b"
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
