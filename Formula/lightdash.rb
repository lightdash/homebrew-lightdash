class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.211.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.211.1/lightdash-cli-1.211.1-macos-arm64.tar.gz"
      sha256 "c1c20253c40dbe543acbba953d4091a4de7b60630710313352cf5e44e9c8b3ca"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.211.1/lightdash-cli-1.211.1-macos-x64.tar.gz"
      sha256 "f817f1af299e5177628f3dd7b7861b492a6f46aafcd31664b3d3e05c31cd2667"
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
