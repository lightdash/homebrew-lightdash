class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2382.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2382.0/lightdash-cli-0.2382.0-macos-arm64.tar.gz"
      sha256 "07cdacfe5f9d2135a00737a6faa49f79ba6c9c33739b96ece07465b7ec9f74eb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2382.0/lightdash-cli-0.2382.0-macos-x64.tar.gz"
      sha256 "ccc43e4f173f7b63fb737ca3ca6712c1fb04f382c7adadce18710d1e889827bb"
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
