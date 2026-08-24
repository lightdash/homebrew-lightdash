class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.240.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.240.1/lightdash-cli-1.240.1-macos-arm64.tar.gz"
      sha256 "d7cf41a3b37c071980f9820278c6cdb260ce2aee7dd062635ec315329ad4b877"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.240.1/lightdash-cli-1.240.1-macos-x64.tar.gz"
      sha256 "16b761998b951256cfb937773c2ec0e79ca2f05a2da7c6097401f73de4e0a3a7"
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
