class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3424.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3424.0/lightdash-cli-0.3424.0-macos-arm64.tar.gz"
      sha256 "11236a54a81101443cc2b3bf2979141d8f7a2f7f0d80f3e61f4c8198e20eb496"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3424.0/lightdash-cli-0.3424.0-macos-x64.tar.gz"
      sha256 "49f7e3d8d14e318138b6758e69eb1feae8c78eb5754085a1f2b460ef71b64f81"
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
