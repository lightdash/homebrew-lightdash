class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2263.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2263.1/lightdash-cli-0.2263.1-macos-arm64.tar.gz"
      sha256 "3a77f04497f93d1d02476134e28605854568ed91c68ad412e655d02399f95184"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2263.1/lightdash-cli-0.2263.1-macos-x64.tar.gz"
      sha256 "abaaa4fed9feb88155bd1ed5b1048b157bf08c99f418dfe88a8512bfdf46066d"
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
