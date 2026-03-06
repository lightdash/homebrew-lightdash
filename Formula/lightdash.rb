class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2580.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2580.1/lightdash-cli-0.2580.1-macos-arm64.tar.gz"
      sha256 "382237eae9b719dd8664c5e5910487ecd1884b3f6010025d500f86ceb8075cce"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2580.1/lightdash-cli-0.2580.1-macos-x64.tar.gz"
      sha256 "6d1cf60428b0f79c0f7239e74816c70c3b09caa8134c33b3572aea2650392ade"
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
