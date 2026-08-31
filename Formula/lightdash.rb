class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.60.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.60.0/lightdash-cli-2.60.0-macos-arm64.tar.gz"
      sha256 "4023eb8e0477e177e3629c18160f86990fa5d472b86abae140b9664ba5d88140"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.60.0/lightdash-cli-2.60.0-macos-x64.tar.gz"
      sha256 "69332f411a515ab6803bdec182f79c7960aa7c97a772ed274e0bf3575f81929d"
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
