class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.497.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.497.1/lightdash-cli-2.497.1-macos-arm64.tar.gz"
      sha256 "4f3fea16f8abbf2a8389434c8079b77b8c2c9f5f5a61baa931d8e8816bc9201e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.497.1/lightdash-cli-2.497.1-macos-x64.tar.gz"
      sha256 "374db00e31a9db3b5279c8df334403b93b41f71ff05e1de85a391c2a66253e78"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.497.1/lightdash-cli-2.497.1-linux-x64.tar.gz"
    sha256 "410852ed55ea942710e61df56c36996def157ef644a869a23398a10007d6678e"

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
