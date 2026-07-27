class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3478.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3478.0/lightdash-cli-0.3478.0-macos-arm64.tar.gz"
      sha256 "751acb2fa48d5556277a102bb605f6b3d007694562b8580cf4f6f1dd731f9dff"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3478.0/lightdash-cli-0.3478.0-macos-x64.tar.gz"
      sha256 "c255ae56f08cae8388938a7e200bea977ff238cdbef2225d55928bbe079630cd"
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
