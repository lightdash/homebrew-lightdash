class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2735.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2735.0/lightdash-cli-0.2735.0-macos-arm64.tar.gz"
      sha256 "57d1594810ade67a41ce2a32de349f964db9aae056361744f06a73840f76a757"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2735.0/lightdash-cli-0.2735.0-macos-x64.tar.gz"
      sha256 "6886ab4ee4f728eb7e6ad0bba7215d17f3226ce40b9215f973ba952897581e7a"
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
