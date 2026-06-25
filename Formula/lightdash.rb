class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3242.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3242.0/lightdash-cli-0.3242.0-macos-arm64.tar.gz"
      sha256 "072d282892aeb23c3e09b45b2dd835c6b833f979928583ba2654e791d6e94c7b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3242.0/lightdash-cli-0.3242.0-macos-x64.tar.gz"
      sha256 "a2781353cc0b4d78321d4f3c487cacf3b00036032a1318040cd994805b352ed0"
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
