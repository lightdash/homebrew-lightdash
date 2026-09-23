class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.305.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.305.5/lightdash-cli-2.305.5-macos-arm64.tar.gz"
      sha256 "b5823c9353b74e1a8249ab0350fe67a18ecabd076924ba284d222fa4d9cac9db"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.305.5/lightdash-cli-2.305.5-macos-x64.tar.gz"
      sha256 "296b7db180bde1f185feca760b3adf8328cfe7af31b7e330be542fe4e2cae3fa"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.305.5/lightdash-cli-2.305.5-linux-x64.tar.gz"
    sha256 "697364e0e902f6d1e2fbcade11941f5138262884966616a3c886271e037c2ada"

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
