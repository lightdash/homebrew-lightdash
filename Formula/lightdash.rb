class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2955.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2955.0/lightdash-cli-0.2955.0-macos-arm64.tar.gz"
      sha256 "7a14a6d0d5fff4723883fa29bade8cda3d2a4c340ccd91a464ca5828eb13aa1b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2955.0/lightdash-cli-0.2955.0-macos-x64.tar.gz"
      sha256 "3d1fe6d58083f0c233ae0236180be1e96878d14cf0d549b88b0f9e3f9d7e9150"
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
