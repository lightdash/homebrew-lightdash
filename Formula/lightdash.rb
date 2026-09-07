class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.149.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.149.0/lightdash-cli-2.149.0-macos-arm64.tar.gz"
      sha256 "1746661afd70728e5585c0c4b2aea5b6ba1531aaf8c9d69ab3ee6cf5f9aa0d3a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.149.0/lightdash-cli-2.149.0-macos-x64.tar.gz"
      sha256 "0c531e20255fb4f99f65ea6a4f30eae42a7de815f6432e116e506f90c0019634"
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
