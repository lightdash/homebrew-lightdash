class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2202.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2202.0/lightdash-cli-0.2202.0-macos-arm64.tar.gz"
      sha256 "81ed0ed25bbd7f2a55436edcda164a6c67868a2346b80b35216058ea3deeb9c2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2202.0/lightdash-cli-0.2202.0-macos-x64.tar.gz"
      sha256 "bf3481069b429d45d0b4acae53d2d7eb3efb95ffebc34a429ab0655290eb12d5"
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
