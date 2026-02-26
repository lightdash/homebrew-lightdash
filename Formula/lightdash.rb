class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2533.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2533.0/lightdash-cli-0.2533.0-macos-arm64.tar.gz"
      sha256 "1f17c319c6372891fde29a3fc1901d994cf9a96762a481293d40fe839a06d8e7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2533.0/lightdash-cli-0.2533.0-macos-x64.tar.gz"
      sha256 "1affe507a48ee39bb5b0a011b97e5ead83d474bf744e2ece0d3f1e2fb4dc3424"
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
