class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3203.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3203.0/lightdash-cli-0.3203.0-macos-arm64.tar.gz"
      sha256 "a95b40aafb9e32e9e437f200ace519e4520d140a8195226117e26e189bbf8160"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3203.0/lightdash-cli-0.3203.0-macos-x64.tar.gz"
      sha256 "ddb560b4d98e4f0a8ac01b619f4859f2f2f5ebf7fcaad28d536b34d82098ebdb"
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
