class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3398.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3398.0/lightdash-cli-0.3398.0-macos-arm64.tar.gz"
      sha256 "89dbae0a16f512b5f9d9a82dd32d2fcfb3fce9beabc3e924ea87272f2e88415f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3398.0/lightdash-cli-0.3398.0-macos-x64.tar.gz"
      sha256 "235a79bb0c94d186f4ea3f847fe5502e24f2394041a76308345ed99c073ac630"
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
