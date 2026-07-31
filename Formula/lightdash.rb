class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.49.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.49.0/lightdash-cli-1.49.0-macos-arm64.tar.gz"
      sha256 "9a0aecafb8cb74d5990b1fbfb11185469dd3428dc64eb8469fb4403a4abbdf9e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.49.0/lightdash-cli-1.49.0-macos-x64.tar.gz"
      sha256 "db31abbb2af7da567a3529fddcd619638fcc227b9998a6c63bad1052dd514f7c"
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
