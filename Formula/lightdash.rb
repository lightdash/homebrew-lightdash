class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.17.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.17.1/lightdash-cli-1.17.1-macos-arm64.tar.gz"
      sha256 "fc643969d3daa2f3f45f4c7b43bbee34a1e03016f81beaac655c2acd76f2353e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.17.1/lightdash-cli-1.17.1-macos-x64.tar.gz"
      sha256 "4c52327fe28fa7e15569765ff0d5c74c8430b848f68af0333ac2fe1f3af2f66d"
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
