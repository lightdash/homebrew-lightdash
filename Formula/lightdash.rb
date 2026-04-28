class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2827.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2827.0/lightdash-cli-0.2827.0-macos-arm64.tar.gz"
      sha256 "3c8f3abab749fb72db4af7f9eda230accb99b062a8012ebf3f6bb34adf5b51aa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2827.0/lightdash-cli-0.2827.0-macos-x64.tar.gz"
      sha256 "3c5b780f66739bd62ac54913b769865b13504b9d0f1617fb27c40bfa278391d7"
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
