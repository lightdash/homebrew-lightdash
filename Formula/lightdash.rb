class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.162.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.162.3/lightdash-cli-2.162.3-macos-arm64.tar.gz"
      sha256 "60abb58b41e01a4202a8ea48a6c5c09c56f01f10e19884c3590e7a51146145b7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.162.3/lightdash-cli-2.162.3-macos-x64.tar.gz"
      sha256 "db4e71a1568a3e4d4f65609221348a6632a345f69330bb4dc836860a4f5f740b"
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
