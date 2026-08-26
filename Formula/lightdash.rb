class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.3.0/lightdash-cli-2.3.0-macos-arm64.tar.gz"
      sha256 "0361ddda88b5d9a73351c95ab6838c4d080534f8cf93797358ee6d7408d0434c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.3.0/lightdash-cli-2.3.0-macos-x64.tar.gz"
      sha256 "da9d09046c79e8f49d52ac95c0c65a780d4b50291432a5b873d9233de35584f3"
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
