class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.39.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.39.0/lightdash-cli-2.39.0-macos-arm64.tar.gz"
      sha256 "b2b403c544912a4aa79e4d04180efee3611b487ec2e5a984d8452c5a555035bf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.39.0/lightdash-cli-2.39.0-macos-x64.tar.gz"
      sha256 "03fa641ab27792d724e3da547df160a3af60b7b667135bc665a4afaf5b226e38"
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
