class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.549.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.549.0/lightdash-cli-2.549.0-macos-arm64.tar.gz"
      sha256 "5e5749874f80df4bc615069ba628893a99e9b6044e0721f317cfea212676bfc0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.549.0/lightdash-cli-2.549.0-macos-x64.tar.gz"
      sha256 "468a1a39996654a5929889e8357236d4ede8cc0b0185f465b303921830956ffc"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.549.0/lightdash-cli-2.549.0-linux-x64.tar.gz"
    sha256 "1b339c850ba1c83468ebc9261dab3a0a9a91a659f6ecea518491db9df526359d"

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
