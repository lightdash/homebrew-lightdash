class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2975.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2975.0/lightdash-cli-0.2975.0-macos-arm64.tar.gz"
      sha256 "5be145fcf448c5ca50e19ace4a817f2571831b84cc7e32d650ef7b30db4b424e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2975.0/lightdash-cli-0.2975.0-macos-x64.tar.gz"
      sha256 "822a80eb8063a3ad5cf809c94b23f980931ddc97c45dcf7caa9fb26ef6bbe060"
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
