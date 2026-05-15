class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2950.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2950.5/lightdash-cli-0.2950.5-macos-arm64.tar.gz"
      sha256 "4fb6e2ac2b2fc0563a91f5ebb5a726011135714a06cda0d749884471399389c8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2950.5/lightdash-cli-0.2950.5-macos-x64.tar.gz"
      sha256 "1c494bab529491da1cfe83d8b865baa7f71eb7230eec4b66017e075a57b4e6a6"
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
