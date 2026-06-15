class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3165.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3165.0/lightdash-cli-0.3165.0-macos-arm64.tar.gz"
      sha256 "c342f4d220f0428b0f15d09cc4ce3ed2b3bc5e0590d4bb3c7e90c25334c37021"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3165.0/lightdash-cli-0.3165.0-macos-x64.tar.gz"
      sha256 "ad45a982ac01ec23971bc9043cd75a36d72d87df48ca4f0073bf4f96c66022dd"
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
