class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.495.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.495.3/lightdash-cli-2.495.3-macos-arm64.tar.gz"
      sha256 "675a5b05f5cfe0ba5a683aa2d699e4f25802f64ca9f91537e229f44e990cbacc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.495.3/lightdash-cli-2.495.3-macos-x64.tar.gz"
      sha256 "e4628a50da4a362363fc10f8a42585aad98aa447c77ffbe975f5c50f419cf095"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.495.3/lightdash-cli-2.495.3-linux-x64.tar.gz"
    sha256 "74463515cc45210a74977cf3899264d2a7fb266f48784650539b180294e89494"

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
