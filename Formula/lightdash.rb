class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.495.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.495.2/lightdash-cli-2.495.2-macos-arm64.tar.gz"
      sha256 "351d83d814f2ebf9076fcff7adacd15983feee17007a18b384c73fac6fd7a794"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.495.2/lightdash-cli-2.495.2-macos-x64.tar.gz"
      sha256 "ea83bd4ed252753c73f1908680b20d185c11dc5101df62272aa3d66c7ea58e20"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.495.2/lightdash-cli-2.495.2-linux-x64.tar.gz"
    sha256 "1498b4e7389133b179cd4067b4b2df5deb4805a58b60685dd7ce944de434c191"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
