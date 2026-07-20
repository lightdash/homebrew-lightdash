class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3427.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3427.0/lightdash-cli-0.3427.0-macos-arm64.tar.gz"
      sha256 "ac934eba29156b0696fd794bd7cc245ab461b402e6d52bc94206c1183619e471"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3427.0/lightdash-cli-0.3427.0-macos-x64.tar.gz"
      sha256 "a76b9f750aab7832399a2acee3055681cc09b49740193a6a98d398d2dd0c5556"
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
