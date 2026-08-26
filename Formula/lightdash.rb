class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.5.0/lightdash-cli-2.5.0-macos-arm64.tar.gz"
      sha256 "b94155ea900c22439907391e96a0eea0acce461c3d002057b3e652786462c756"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.5.0/lightdash-cli-2.5.0-macos-x64.tar.gz"
      sha256 "75700ce3cde8568da735c65236ee659cf14a36bc7afdfc4f30a290acc04594d2"
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
