class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.161.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.161.0/lightdash-cli-1.161.0-macos-arm64.tar.gz"
      sha256 "9b26d633babc42f085c16386ce3f52157a2db4c529c8bb7a9be6a0adb9710cdd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.161.0/lightdash-cli-1.161.0-macos-x64.tar.gz"
      sha256 "58d8c155db8c4c9c6ca7b28eabe2e3805119ce94fa08d77855abd6036a8b8ec4"
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
