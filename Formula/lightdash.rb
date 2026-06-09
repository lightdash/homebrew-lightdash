class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3120.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3120.1/lightdash-cli-0.3120.1-macos-arm64.tar.gz"
      sha256 "04139255cd1ec71fa21e6a3f7fafeaa537276e2bf4e0588a2e7d9dcb90566cae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3120.1/lightdash-cli-0.3120.1-macos-x64.tar.gz"
      sha256 "8d7164c69e18c1ffea7e8b6074875ea889c77eee2171af57a28b6c51c2dfb0e9"
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
