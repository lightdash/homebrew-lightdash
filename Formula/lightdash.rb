class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3406.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3406.0/lightdash-cli-0.3406.0-macos-arm64.tar.gz"
      sha256 "ef4b0ea20be3736014faa2949b949e50408e9713ff8aa7c1884b4dfc701fece0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3406.0/lightdash-cli-0.3406.0-macos-x64.tar.gz"
      sha256 "bbcf89d3297b0bc791b2564849f730201f29f506e096c0c11c460568afcfb490"
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
