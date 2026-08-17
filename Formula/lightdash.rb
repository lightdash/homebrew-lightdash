class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.169.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.169.0/lightdash-cli-1.169.0-macos-arm64.tar.gz"
      sha256 "f9bbeb30724349870d62ba863aae1e7d4816a417ac013308fb63a88d8285c497"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.169.0/lightdash-cli-1.169.0-macos-x64.tar.gz"
      sha256 "3a1b8ad509158cdbc28d3b6a7686be1061a63bee2b889cc90bb8aa166619e614"
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
