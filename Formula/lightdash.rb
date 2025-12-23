class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2271.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2271.6/lightdash-cli-0.2271.6-macos-arm64.tar.gz"
      sha256 "d71fd658816f31deedca081a0bb5f31323713fe36c2854fe71ae470292b1a0d4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2271.6/lightdash-cli-0.2271.6-macos-x64.tar.gz"
      sha256 "5222dd3fcd66b2d891242ea440fce41990cb741562d260c4d980a5df9cc729de"
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
