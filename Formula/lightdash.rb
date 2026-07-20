class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3421.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3421.0/lightdash-cli-0.3421.0-macos-arm64.tar.gz"
      sha256 "68bc20722af09f64e74ec86b76ef1b139ff6bdbb23236d76337dd0f7341ff778"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3421.0/lightdash-cli-0.3421.0-macos-x64.tar.gz"
      sha256 "ea963fb87f161af1dfa27605ed859f050cb404baf8442769980805385e706119"
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
