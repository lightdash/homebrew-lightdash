class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2244.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2244.0/lightdash-cli-0.2244.0-macos-arm64.tar.gz"
      sha256 "7e98f14c7a3a97c637a9049df951e2b3902f1e3913a1498228af08c2f6214cc0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2244.0/lightdash-cli-0.2244.0-macos-x64.tar.gz"
      sha256 "412d0a883aff6ad7778f087834b9bed27f7823a638e3efd5c85e867008a3b33e"
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
