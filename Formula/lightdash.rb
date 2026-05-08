class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2903.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2903.4/lightdash-cli-0.2903.4-macos-arm64.tar.gz"
      sha256 "48dcdcd87f9da7d9ba9451c10d98837f2b0d1b42302575f53d61b37ef2b5ad2d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2903.4/lightdash-cli-0.2903.4-macos-x64.tar.gz"
      sha256 "64ba1c107c0d4297e8f10fd2810fa84e04563d8234c116c1e54433a5121d1aaf"
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
