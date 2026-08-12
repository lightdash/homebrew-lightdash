class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.133.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.133.0/lightdash-cli-1.133.0-macos-arm64.tar.gz"
      sha256 "cf8a1ede297583df6954f69baad21bfe59e6040222be21581d964a05f663be0f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.133.0/lightdash-cli-1.133.0-macos-x64.tar.gz"
      sha256 "3d47f7a1563cae00956a420285db4019fa4935e0ee4ae82b98e28390bcf8fcef"
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
