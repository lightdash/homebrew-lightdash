class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3127.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3127.0/lightdash-cli-0.3127.0-macos-arm64.tar.gz"
      sha256 "8e3f247417639ecaf505657cf5656183e63e79ff987386de33ed29d5a02798fa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3127.0/lightdash-cli-0.3127.0-macos-x64.tar.gz"
      sha256 "0d218387bd5c9a963aa0eb2f018cbb38914504941ee5492b7d006c377d5e334c"
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
