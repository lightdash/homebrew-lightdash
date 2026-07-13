class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3364.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3364.2/lightdash-cli-0.3364.2-macos-arm64.tar.gz"
      sha256 "b3d630d62476a2e43638c95d766f18f04ae791d7fc18e1e67593896c35da284e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3364.2/lightdash-cli-0.3364.2-macos-x64.tar.gz"
      sha256 "2b7ee49ab6e6811b84a32741b981abae57fedd4714799885afb14ec974e6ea9f"
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
