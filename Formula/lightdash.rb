class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3170.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3170.0/lightdash-cli-0.3170.0-macos-arm64.tar.gz"
      sha256 "6fef8647a8061632777efc93a6c78425a9a1ea2a1cb210a653f21e315cfdff5d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3170.0/lightdash-cli-0.3170.0-macos-x64.tar.gz"
      sha256 "fd0590d5a9f65d8d12ce20c70338aa1618ef64d9d9b6c7398d4476efc8484f16"
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
